## ✨ Overview
Booking Application Back is a modular Spring Boot backend that powers a multi-service booking ecosystem:

* Hotel rooms & packages  
* Attractions with scheduled time-slots  
* Secure user, staff & admin accounts with JWT-based auth  
* Payment-gateway abstraction (Stripe, PayPal, …)  
* Review & rating workflow using DTOs and the existing `BaseReview` hierarchy  

The project is split into four Maven modules for clean separation of concerns:

| Module | Purpose |
| ------ | ------- |
| `booking-entity` | JPA entities, enum types & database metadata |
| `booking-dto` | Immutable DTOs used by controllers and tests |
| `booking-security` | Spring Security + JWT config & filters |
| `booking-api` | REST controllers, services, mappers, exception handling |

---

## 🏗️ Architecture Highlights
* **Spring Boot 3 / Maven multi-module**
* **PostgreSQL + Liquibase** migrations (scripts live in `booking-entity/src/main/resources/db/changelog`)
* Design patterns already applied: **Abstract Factory**, **Builder**, **Prototype**, **Strategy**, **Proxy**, **Template Method**
* Hexagonal/Clean-Architecture inclination (core domain in `entity`, application services in `api`, infrastructure adapters in `security`/`api`)
* **OpenAPI 3** (springdoc) auto-generates live API docs at `/swagger-ui.html`
---

## 📚 API Reference

| Method | Endpoint | Description |
|--------|----------|-------------|
| **GET** | `/continents` | List all continents |
| **GET** | `/categories` | List all accommodation/activity categories |
| **GET** | `/cities/featured` | Featured cities for the landing page |
| **GET** | `/hotels/continent/{continentId}` | One hotel per country in a continent |
| **GET** | `/hotels/city/{cityId}` | All hotels in a city |
| **GET** | `/rooms/{hotelId}` | All rooms for a hotel |
| **GET** | `/apartments/continent/{continentId}` | Up to 5 apartments (1 per country) from a continent |
| **GET** | `/apartments/city/{cityId}` | All apartments in a city |
| **GET** | `/attractions/{cityId}` | All attractions in a city |
| **POST** | `/bookings/{type}` | Create a booking (`type` = `hotel-booking` or `apartment-booking`); requires **JWT** |
| **GET** | `/bookings/{type}` | User’s bookings of the given `type`; requires **JWT** |
| **POST** | `/reviews/{type}/{targetId}` | Leave a review for a hotel/apartment; requires **JWT** |
| **GET** | `/reviews/{type}/{targetId}` | List reviews for a hotel/apartment |

> **Note**  
> * All secure endpoints expect an `Authorization: Bearer <JWT>` header.  
> * Payload shapes are defined in the `*.dto` packages and rendered automatically in Swagger (`/swagger-ui.html`).
