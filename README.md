# Makers B'n'B

## Headline specifications

- Any signed-up user can list a new space.
- Users can list multiple spaces.
- Users should be able to name their space, provide a short description of the space, and a price per night.
- Users should be able to offer a range of dates where their space is available.
- Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
- Nights for which a space has already been booked should not be available for users to book that space.
- Until a user has confirmed a booking request, that space can still be booked for that night.

## User Stories

[Link to Trello User Stories Board](https://trello.com/b/fBNwccl8/user-stories)

- As a user, So that I can see all/list properties I would like to be able to sign up for Makers BNB
- As a user, so that I can find a property, I would like to be able to see a list of all properties I can book
- As a user, so that I can list a property, I would like to be able to become a 'host'
- As a user, so that I can have a place to stay, I would like to be able book a property
- As a user, so that I can confirm my booking, I would like to receive a confirmation from the host
- As a host, so that I can manage all my properties, I would like to be able to add multiple properties
- As a host, so a user can book my space, I would like to provide details about my space(description, price, location)
- As a host, so that users can book my property, I would like to be able to approve the request

## Model Diagrams

#### CRC Diagram

<figure>
    ![image](https://user-images.githubusercontent.com/65397514/99977050-1a0ade00-2d9c-11eb-9337-45c21ff18eb6.png)
    <figcaption></figcaption>
</figure>

#### Class Diagram
<figure>
    <img width="1074" alt="Screenshot 2020-11-24 at 10 58 46" src="https://user-images.githubusercontent.com/65397514/100459237-0b366b00-30bd-11eb-8e54-a302d2d1017d.png"/>
    <figcaption><i>Initial Class Diagram created during the planning session, containing all three classes used.</i></figcaption>
</figure>

#### Flowchart as User/Host

<figure>
    <img width="751" alt="Screenshot 2020-11-24 at 11 24 37" src="https://user-images.githubusercontent.com/65397514/100459249-1093b580-30bd-11eb-9ddb-2d502e9da0be.png">
    <figcaption><i>Flowchart representing the initial planning for a simple workflow of a host</i></figcaption>
</figure>

#### Flowchart as User/Guest

<figure>
    <img width="955" alt="Screenshot 2020-11-24 at 11 10 56" src="https://user-images.githubusercontent.com/65397514/100459255-12f60f80-30bd-11eb-9aba-868dff4cc1b3.png">
    <figcaption><i>Flowchart representing the initial planning for a simple workflow of a guest</i></figcaption>
</figure>

## RSpec Testing Results and Coverage

<figure>
    <img width="430" alt="Screenshot 2020-11-27 at 14 41 24" src="https://user-images.githubusercontent.com/65397514/100460388-ff4ba880-30be-11eb-8a92-b5498e44462e.png">
    <figcaption>RSpec Suite - Testing Results and Coverage</figcaption>
</figure>