---
title: "Travery API Documentation"
source: "http://localhost:8080/scalar#tag/payment-controller/GET/api/v1/payments/vnpay-ipn"
author:
published:
created: 2026-05-21
description:
tags:
  - "clippings"
---
v1.0.0

OpenAPI 3.0.1

## Travery API

Backend API cho hệ thống đặt tour và mạng xã hội Travery

http://localhost:8080

Local Development Server

Client Libraries

## tour-controller

### /api/v1/tours/templates

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/tours/templates \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "name": "",
  "description": "",
  "destinationId": "",
  "hotelId": "",
  "pickupLocation": "",
  "pricePerAdult": 0,
  "pricePerChild": 0,
  "refundPolicyId": "",
  "requestedByUserId": "",
  "isCustom": true,
  "itineraries": [
    {
      "dayNumber": 1,
      "title": "",
      "description": ""
    }
  ]
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "name": "string",
    "description": "string",
    "destinationName": "string",
    "hotelName": "string",
    "pickupLocation": "string",
    "pricePerAdult": 1,
    "pricePerChild": 1,
    "custom": true
  }
}
```

### /api/v1/tours

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/tours?keyword=&minPrice=1&maxPrice=1&startDate=&destinationId=&minRating=1&page=0&size=1&sort=' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "totalElements": 1,
    "totalPages": 1,
    "size": 1,
    "content": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "name": "string",
        "averageRating": 1,
        "price": 1,
        "thumbnailUrl": "string",
        "destinationName": "string",
        "durationDays": 1
      }
    ],
    "number": 1,
    "pageable": {
      "offset": 1,
      "paged": true,
      "pageNumber": 1,
      "pageSize": 1,
      "sort": {
        "empty": true,
        "sorted": true,
        "unsorted": true
      },
      "unpaged": true
    },
    "sort": {
      "empty": true,
      "sorted": true,
      "unsorted": true
    },
    "numberOfElements": 1,
    "first": true,
    "last": true,
    "empty": true
  }
}
```

### /api/v1/tours/{id}

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/tours/123e4567-e89b-12d3-a456-426614174000 \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "name": "string",
    "description": "string",
    "pricePerAdult": 1,
    "pricePerChild": 1,
    "averageRating": 1,
    "ratingCount": 1,
    "startLocation": "string",
    "itineraryList": [
      {
        "dayNumber": 1,
        "title": "string",
        "description": "string",
        "images": [
          {
            "url": "string",
            "isThumnail": true
          }
        ]
      }
    ],
    "images": [
      {
        "url": "string",
        "isThumnail": true
      }
    ],
    "destination": {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "code": "string",
      "name": "string",
      "region": "NORTH",
      "imageUrl": "string",
      "description": "string"
    },
    "refundPolicy": {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "name": "string",
      "serviceType": "TOUR",
      "rules": [
        {
          "id": "123e4567-e89b-12d3-a456-426614174000",
          "daysBefore": 1,
          "refundPercentage": 1
        }
      ]
    },
    "durationDays": 1
  }
}
```

### /api/v1/tours/{id}/instances

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/tours/123e4567-e89b-12d3-a456-426614174000/instances \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "startDate": "2026-05-21",
      "endDate": "2026-05-21",
      "status": "PLANNING",
      "availableSlots": 1
    }
  ]
}
```

### /api/v1/tours/featured

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/tours/featured \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "name": "string",
      "averageRating": 1,
      "price": 1,
      "thumbnailUrl": "string",
      "destinationName": "string",
      "durationDays": 1
    }
  ]
}
```

## tour-booking-controller

### /api/v1/tour-instances/{instanceId}/bookings

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/tour-instances/123e4567-e89b-12d3-a456-426614174000/bookings \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "members": [
    {
      "fullName": "",
      "identityNumber": "",
      "dateOfBirth": "",
      "memberType": "ADULT"
    }
  ],
  "specialRequests": "",
  "ipAddress": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "customerName": "string",
    "customerPhone": "string",
    "specialRequests": "string",
    "status": "PENDING",
    "totalPrice": 1,
    "pricePerAdultAtBooking": 1,
    "pricePerChildAtBooking": 1,
    "paymentDeadline": "2026-05-21T10:33:55.494Z",
    "tourName": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "members": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "fullName": "string",
        "identityNumber": "string",
        "dateOfBirth": "2026-05-21",
        "attendanceStatus": "NOT_CHECKED",
        "memberType": "ADULT"
      }
    ],
    "payment": {
      "transactionId": "123e4567-e89b-12d3-a456-426614174000",
      "amount": 1,
      "paymentUrl": "string",
      "expiresAt": "2026-05-21T10:33:55.494Z"
    }
  }
}
```

### /api/v1/bookings/{bookingId}/reviews

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/bookings/123e4567-e89b-12d3-a456-426614174000/reviews \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "rating": 1,
  "content": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "rating": 1,
    "content": "string",
    "reviewerName": "string",
    "createdAt": "2026-05-21T10:33:55.494Z"
  }
}
```

### /api/v1/bookings/{bookingId}/payments

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/bookings/123e4567-e89b-12d3-a456-426614174000/payments \
  --request POST \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "transactionId": "123e4567-e89b-12d3-a456-426614174000",
    "amount": 1,
    "paymentUrl": "string",
    "expiresAt": "2026-05-21T10:33:55.494Z"
  }
}
```

### /api/v1/bookings/{bookingId}/cancel

Path Parameters

Body·

application/json

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/bookings/123e4567-e89b-12d3-a456-426614174000/cancel \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "reason": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "bookingId": "123e4567-e89b-12d3-a456-426614174000",
    "bookingStatus": "PENDING",
    "refundAmount": 1,
    "refundPercentage": 1,
    "refundStatus": "PENDING",
    "refundMessage": "string"
  }
}
```

### /api/v1/bookings/{bookingId}

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/bookings/123e4567-e89b-12d3-a456-426614174000 \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "status": "PENDING",
    "totalPrice": 1,
    "pricePerAdultAtBooking": 1,
    "pricePerChildAtBooking": 1,
    "paymentDeadline": "2026-05-21T10:33:55.494Z",
    "specialRequests": "string",
    "createdAt": "2026-05-21T10:33:55.494Z",
    "tourName": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "members": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "fullName": "string",
        "identityNumber": "string",
        "dateOfBirth": "2026-05-21",
        "attendanceStatus": "NOT_CHECKED",
        "memberType": "ADULT"
      }
    ],
    "paymentMethod": "VNPAY",
    "paymentStatus": "PENDING",
    "transactionId": "123e4567-e89b-12d3-a456-426614174000"
  }
}
```

### /api/v1/bookings/me

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/bookings/me?status=PENDING&page=0&size=1&sort=' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "totalElements": 1,
    "totalPages": 1,
    "size": 1,
    "content": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "status": "PENDING",
        "totalPrice": 1,
        "paymentDeadline": "2026-05-21T10:33:55.494Z",
        "memberCount": 1,
        "tourName": "string",
        "startDate": "2026-05-21",
        "endDate": "2026-05-21",
        "createdAt": "2026-05-21T10:33:55.494Z"
      }
    ],
    "number": 1,
    "pageable": {
      "offset": 1,
      "paged": true,
      "pageNumber": 1,
      "pageSize": 1,
      "sort": {
        "empty": true,
        "sorted": true,
        "unsorted": true
      },
      "unpaged": true
    },
    "sort": {
      "empty": true,
      "sorted": true,
      "unsorted": true
    },
    "numberOfElements": 1,
    "first": true,
    "last": true,
    "empty": true
  }
}
```

## guide-tour-instance-controller

### /api/v1/staff/guide/instances/{id}/incidents

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000/incidents \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "tourInstanceId": "123e4567-e89b-12d3-a456-426614174000",
      "reporterId": "123e4567-e89b-12d3-a456-426614174000",
      "reporterName": "string",
      "title": "string",
      "description": "string",
      "severity": "LOW",
      "status": "PENDING",
      "createdAt": "2026-05-21T10:33:55.494Z",
      "updatedAt": "2026-05-21T10:33:55.494Z"
    }
  ]
}
```

### /api/v1/staff/guide/instances/{id}/incidents

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000/incidents \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "title": "",
  "description": "",
  "severity": "LOW"
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourInstanceId": "123e4567-e89b-12d3-a456-426614174000",
    "reporterId": "123e4567-e89b-12d3-a456-426614174000",
    "reporterName": "string",
    "title": "string",
    "description": "string",
    "severity": "LOW",
    "status": "PENDING",
    "createdAt": "2026-05-21T10:33:55.494Z",
    "updatedAt": "2026-05-21T10:33:55.494Z"
  }
}
```

### /api/v1/staff/guide/instances/{id}/progress

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000/progress \
  --request PATCH \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "status": "PLANNING"
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "status": "PLANNING",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string",
    "bookings": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "customerName": "string",
        "customerPhone": "string",
        "specialRequests": "string",
        "status": "PENDING",
        "totalPrice": 1,
        "pricePerAdultAtBooking": 1,
        "pricePerChildAtBooking": 1,
        "paymentDeadline": "2026-05-21T10:33:55.494Z",
        "tourName": "string",
        "startDate": "2026-05-21",
        "endDate": "2026-05-21",
        "members": [
          {
            "id": "123e4567-e89b-12d3-a456-426614174000",
            "fullName": "string",
            "identityNumber": "string",
            "dateOfBirth": "2026-05-21",
            "attendanceStatus": "NOT_CHECKED",
            "memberType": "ADULT"
          }
        ],
        "payment": {
          "transactionId": "123e4567-e89b-12d3-a456-426614174000",
          "amount": 1,
          "paymentUrl": "string",
          "expiresAt": "2026-05-21T10:33:55.494Z"
        }
      }
    ]
  }
}
```

### /api/v1/staff/guide/instances/{id}/attendance

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000/attendance \
  --request PATCH \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "attendances": [
    {
      "memberId": "",
      "status": "NOT_CHECKED"
    }
  ]
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "status": "PLANNING",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string",
    "bookings": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "customerName": "string",
        "customerPhone": "string",
        "specialRequests": "string",
        "status": "PENDING",
        "totalPrice": 1,
        "pricePerAdultAtBooking": 1,
        "pricePerChildAtBooking": 1,
        "paymentDeadline": "2026-05-21T10:33:55.494Z",
        "tourName": "string",
        "startDate": "2026-05-21",
        "endDate": "2026-05-21",
        "members": [
          {
            "id": "123e4567-e89b-12d3-a456-426614174000",
            "fullName": "string",
            "identityNumber": "string",
            "dateOfBirth": "2026-05-21",
            "attendanceStatus": "NOT_CHECKED",
            "memberType": "ADULT"
          }
        ],
        "payment": {
          "transactionId": "123e4567-e89b-12d3-a456-426614174000",
          "amount": 1,
          "paymentUrl": "string",
          "expiresAt": "2026-05-21T10:33:55.494Z"
        }
      }
    ]
  }
}
```

### /api/v1/staff/guide/instances

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/staff/guide/instances?filter=all' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "startDate": "2026-05-21",
      "endDate": "2026-05-21",
      "status": "PLANNING",
      "availableSlots": 1
    }
  ]
}
```

### /api/v1/staff/guide/instances/{id}

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000 \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "status": "PLANNING",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string",
    "bookings": [
      {
        "id": "123e4567-e89b-12d3-a456-426614174000",
        "customerName": "string",
        "customerPhone": "string",
        "specialRequests": "string",
        "status": "PENDING",
        "totalPrice": 1,
        "pricePerAdultAtBooking": 1,
        "pricePerChildAtBooking": 1,
        "paymentDeadline": "2026-05-21T10:33:55.494Z",
        "tourName": "string",
        "startDate": "2026-05-21",
        "endDate": "2026-05-21",
        "members": [
          {
            "id": "123e4567-e89b-12d3-a456-426614174000",
            "fullName": "string",
            "identityNumber": "string",
            "dateOfBirth": "2026-05-21",
            "attendanceStatus": "NOT_CHECKED",
            "memberType": "ADULT"
          }
        ],
        "payment": {
          "transactionId": "123e4567-e89b-12d3-a456-426614174000",
          "amount": 1,
          "paymentUrl": "string",
          "expiresAt": "2026-05-21T10:33:55.494Z"
        }
      }
    ]
  }
}
```

### /api/v1/staff/guide/instances/{id}/passengers

Path Parameters

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/staff/guide/instances/123e4567-e89b-12d3-a456-426614174000/passengers?query=' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "fullName": "string",
      "identityNumber": "string",
      "dateOfBirth": "2026-05-21",
      "attendanceStatus": "NOT_CHECKED",
      "memberType": "ADULT"
    }
  ]
}
```

## coordinator-tour-instance-controller

### /api/v1/staff/coordinator/instances

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/staff/coordinator/instances?filter=all' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "startDate": "2026-05-21",
      "endDate": "2026-05-21",
      "status": "PLANNING",
      "availableSlots": 1
    }
  ]
}
```

### /api/v1/staff/coordinator/instances

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/coordinator/instances \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "tourId": "",
  "startDate": "",
  "endDate": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "minParticipants": 1,
    "maxParticipants": 1,
    "currentParticipants": 1,
    "status": "PLANNING",
    "guideId": "123e4567-e89b-12d3-a456-426614174000",
    "guideName": "string",
    "guidePhone": "string",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string"
  }
}
```

### /api/v1/staff/coordinator/instances/{id}

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/coordinator/instances/123e4567-e89b-12d3-a456-426614174000 \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "minParticipants": 1,
    "maxParticipants": 1,
    "currentParticipants": 1,
    "status": "PLANNING",
    "guideId": "123e4567-e89b-12d3-a456-426614174000",
    "guideName": "string",
    "guidePhone": "string",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string"
  }
}
```

### /api/v1/staff/coordinator/instances/{id}

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/coordinator/instances/123e4567-e89b-12d3-a456-426614174000 \
  --request PATCH \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "coordinatorId": "",
  "guideId": "",
  "coachId": "",
  "driverId": "",
  "hotelBookingId": "",
  "startDate": "",
  "endDate": "",
  "status": "PLANNING"
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "minParticipants": 1,
    "maxParticipants": 1,
    "currentParticipants": 1,
    "status": "PLANNING",
    "guideId": "123e4567-e89b-12d3-a456-426614174000",
    "guideName": "string",
    "guidePhone": "string",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string"
  }
}
```

### /api/v1/staff/coordinator/instances/{id}/status

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/coordinator/instances/123e4567-e89b-12d3-a456-426614174000/status \
  --request PATCH \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "status": "PLANNING"
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "tourName": "string",
    "destinationName": "string",
    "pickupLocation": "string",
    "startDate": "2026-05-21",
    "endDate": "2026-05-21",
    "minParticipants": 1,
    "maxParticipants": 1,
    "currentParticipants": 1,
    "status": "PLANNING",
    "guideId": "123e4567-e89b-12d3-a456-426614174000",
    "guideName": "string",
    "guidePhone": "string",
    "coachId": "123e4567-e89b-12d3-a456-426614174000",
    "coachLicensePlate": "string",
    "coachType": "string",
    "driverId": "123e4567-e89b-12d3-a456-426614174000",
    "driverName": "string",
    "driverPhone": "string"
  }
}
```

### /api/v1/staff/coordinator/instances/{id}/incidents

Path Parameters

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/staff/coordinator/instances/123e4567-e89b-12d3-a456-426614174000/incidents \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": [
    {
      "id": "123e4567-e89b-12d3-a456-426614174000",
      "tourInstanceId": "123e4567-e89b-12d3-a456-426614174000",
      "reporterId": "123e4567-e89b-12d3-a456-426614174000",
      "reporterName": "string",
      "title": "string",
      "description": "string",
      "severity": "LOW",
      "status": "PENDING",
      "createdAt": "2026-05-21T10:33:55.494Z",
      "updatedAt": "2026-05-21T10:33:55.494Z"
    }
  ]
}
```

## chat-controller

### /api/v1/chats/initiate

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/chats/initiate?tourId=' \
  --request POST \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "userId": "123e4567-e89b-12d3-a456-426614174000",
    "coordinatorId": "123e4567-e89b-12d3-a456-426614174000",
    "tourId": "123e4567-e89b-12d3-a456-426614174000",
    "cometchatGuid": "string",
    "status": "OPEN"
  }
}
```

### /api/v1/chats/initiate-group

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/chats/initiate-group?tourInstanceId=' \
  --request POST \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "id": "123e4567-e89b-12d3-a456-426614174000",
    "userId": "123e4567-e89b-12d3-a456-426614174000",
    "coordinatorId": "123e4567-e89b-12d3-a456-426614174000",
    "tourId": "123e4567-e89b-12d3-a456-426614174000",
    "cometchatGuid": "string",
    "status": "OPEN"
  }
}
```

## auth-controller

### /api/v1/auth/verify-otp

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/verify-otp \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": "",
  "otp": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/signup

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/signup \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": "",
  "password": "",
  "confirmPassword": "",
  "fullName": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "email": "string",
    "requiresOtp": true
  }
}
```

### /api/v1/auth/reset-password

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/reset-password \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": "",
  "otp": "",
  "newPassword": "",
  "confirmPassword": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/resend-otp

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/resend-otp \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/refresh

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/refresh \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "refreshToken": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "accessToken": "string",
    "refreshToken": "string"
  }
}
```

### /api/v1/auth/logout

Headers

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/logout \
  --request POST \
  --header 'Authorization: ' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "refreshToken": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/login

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/login \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": "",
  "password": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string",
  "data": {
    "accessToken": "string",
    "refreshToken": "string",
    "cometchatUid": "string"
  }
}
```

### /api/v1/auth/forgot-password

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/forgot-password \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/create-staff

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/create-staff \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "email": "",
  "password": "",
  "fullName": "",
  "role": "TOURIST",
  "department": "TOUR",
  "guideLicense": "",
  "hotelId": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/change-password

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/change-password \
  --request POST \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "currentPassword": "",
  "newPassword": "",
  "confirmPassword": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

### /api/v1/auth/account-deletion

Headers

Responses

- \*/\*

```
curl http://localhost:8080/api/v1/auth/account-deletion \
  --request POST \
  --header 'Authorization: ' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN' \
  --data '{
  "password": ""
}'
```

```json
{
  "httpStatus": 1,
  "message": "string"
}
```

## payment-controller

### /api/v1/payments/vnpay-return

Query Parameters

Responses

- 200
	OK

```
curl 'http://localhost:8080/api/v1/payments/vnpay-return?additionalProperty=' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

### /api/v1/payments/vnpay-ipn

Query Parameters

Responses

- \*/\*

```
curl 'http://localhost:8080/api/v1/payments/vnpay-ipn?additionalProperty=' \
  --header 'Authorization: Bearer YOUR_SECRET_TOKEN'
```

```json
{
  "additionalProperty": "string"
}
```