# Use Cases

**Use Case:**  User logs in
**Actor:** User  
**Description:** This use case describes how a user logs into blogging system
**Precondition:** none
1. The system requires from the users to type their usernames and passwords.
2. The user enters his/her username and password.
3. The system validates the entered username and password and logs the actor into the
__Alternative Flows:__ 
If in the Basic Flow the user  enters an invalid username and/or password, the system displays an error message.

__Postcondition:__ If login is successful, a success message will be displayed.

**Use Case:**  User creates post
**Actor:** User  
**Description:** This use case describes new post creation
**Precondition:** The user is logged in
1. The user creates new post.
2. The user fills post title and post.
3. The user submits the post.

__Postcondition:__ The post is created and found in post list and success message for post creation is displayed.

**Use Case:**   User edits post
**Actor:** User  
**Description:** This use case describes user editing post
**Precondition:** The user is logged in
1. The user searches for a post.
2. The user selects the desired post to edit.
3. The user edits the post title if needed.
4. The user edits the post main text if needed.
5. The user submits the post after editing.

__Postcondition:__ The post edits are reflected in the post and success message for post update is displayed.

**Use Case:**  User deletes post
**Actor:** User  
**Description:** This use case describes user removing a post
**Precondition:** The user is logged in
1. The user searches for a post.
2. The user clicks on delete.

__Postcondition:__ The post is deleted and success message for post delete is displayed.


**Use Case:**  User adds  comment to post
**Actor:** User  
**Description:** This use case describes adding a comment for a post
**Precondition:** The user is logged in
1. The user searches for a post.
2. The user fills a comment.
3. The user submits the comment.

__Postcondition:__ The post has the comment linked to it.