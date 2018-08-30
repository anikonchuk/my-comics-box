# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app- I used the corneal gem to structure my initial project.
- [x] Use ActiveRecord for storing information in a database- My models inherit from ActiveRecord::Base, and I used ActiveRecord for my migrations.
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)- The project has model classes for User, Comic, Writer, and Artist.
- [x] Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)- User has_many Comics, has_many Writers through Comics, and has_many Artists through Comics. Writer has_many Comics and has_many Artists through Comics. Artist has_many Comics, and has_many Writers through Comics.
- [x] Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)- Comic belongs_to User, belongs_to Artist, and belongs_to Writer.
- [x] Include user accounts- User accounts have usernames and secure passwords.
- [x] Ensure that users can't modify content created by other users- Links to the Edit page and the Delete button are only visible to the User who created the resource. In addition, in the Patch and Delete routes, there are checks to ensure that only the user that created the material can modify it.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying- Users can create new Comics. They can Read about comics that are already created. Users who have created Comics have the ability to Edit and Delete those Comics they have created.
- [x] Include user input validations- Certain fields are required before submission. In addition, the User model has a validation built in for both presence of a username and its uniqueness. The has_secure_password macro in User also validates presence of a password. The Writer and Artist classes have validations for name, and the Comic class has validations for name, writer_id, and artist_id.
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)- A flash message displays specific validation failure for registration. More general flash messages are also used when login fails, when creating new comics succeeds and fails, when editing a comic succeeds, and when deletion occurs.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code- All necessary components are present.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
