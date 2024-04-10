# Puppy adoption by Vitor Siqueira:

Millions of pets enter shelters every year, some fighting to survive on severe conditions. Our puppies are dreaming to meet their next best friend.

In this challenge, users will be able to visualize our mission in the new website by viewing photos, knowing about the project and interacting with different parts of the site to engage them to adopt our lonely puppies.

This project already contains the backend server and some assets that you're going to use in order to complete the tasks below, so you do not to worry to start things from scratch.

For this series of challenges, we're going to use some basic HTML and CSS.

## Gallery

Create a gallery page that display a series of images of puppies. Look for the existing images available on the server, making sure to link to correct path. Link as many images as you want.

## About 

Create an about view that describes the mission of the website. Additionally link to the same page the base CSS stylesheet to make things pretty. The stylesheets are already avaiable in the project and can be served by the backend. 

## Navigation

Modify the homepage to add a navigation menu for our adoption site. The navigation menu should contain the correct links for the pages: `Home (/)`, `About (/about)` and `Gallery (/gallery)`.

## Extra 1 - Adoption form

Create a view for an adoption form, the form should contain the following fields:

```
- Label: Contact email
- Name: email

- Label: Puppy Breed
- Name: breed

- Label: Gender
- Name: gender
- Value: male or female
```

The form should submit to `/adopt`.

For the form view, just use regular HTML tags, no special handlers or methods are required. Make sure that each field has the correct `name` attribute so the server that receives its value.

No validations rules are required, when submitted the **server** will automatically handle the new adoption for you and return back a new page with the details.

You can also add any CSS you want.

That's it. Have fun!

## Installation

```rb
gem install bundler
bundle install
```

## Running

```rb
ruby server.rb
```

Open `http://localhost:4567`
