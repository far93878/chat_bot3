from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.db.models.expressions import RawSQL
from .models import Property, Broker, Society
from .serializers import PropertySerializer, BrokerSerializer


@api_view(['POST'])
def chatbot_api(request):
    message = request.data.get("message")
    lat = request.data.get("lat")
    lon = request.data.get("lon")

    # 1️⃣ Society detection
    society = Society.objects.filter(
        society_name__icontains=message
    ).first()

    if society:
        brokers = Broker.objects.filter(
            brokersociety__society=society
        )
        return Response({
            "type": "brokers",
            "data": BrokerSerializer(brokers, many=True).data
        })

    # 2️⃣ Nearest property
    if lat and lon:
        query = """
        (6371 * acos(
            cos(radians(%s)) *
            cos(radians(latitude)) *
            cos(radians(longitude) - radians(%s)) +
            sin(radians(%s)) *
            sin(radians(latitude))
        ))
        """

        properties = Property.objects.annotate(
            distance=RawSQL(query, (lat, lon, lat))
        ).order_by("distance")[:5]

        return Response({
            "type": "properties",
            "data": PropertySerializer(properties, many=True).data
        })

    return Response({"message": "Sorry, no results found"})