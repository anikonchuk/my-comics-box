# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)- The project has model classes for User, Comic, Writer, and Artist.
- [x] Include at least one has_many relationship on your User model (x has_many y, e.g. User has_many Posts)- User has_many Comics, has_many Writers through Comics, and has_many Artists through Comics. Writer has_many Comics and has_many Artists through Comics. Artist has_many Comics, and has_many Writers through Comics.
- [x] Include at least one belongs_to relationship on another model (x belongs_to y, e.g. Post belongs_to User)- Comic belongs_to User, belongs_to Artist, and belongs_to Writer.
- [x] Include user accounts- User accounts have usernames and secure passwords.
- [x] Ensure that users can't modify content created by other users- Links to the Edit page and the Delete button are only visible to the User who created the resource. In addition, in the Patch and Delete routes, there are checks to ensure that only the user that created the material can modify it.
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [ ] Include user input validations
- [ ] Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message
