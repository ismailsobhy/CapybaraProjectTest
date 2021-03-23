# Use Cases

| Usercase | User signs in |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes how a user logs into blogging system. |
|Precondition|none|
|Steps|<ol><li>The user enters his/her username and password.</li><li> The user clicks on login and logs into the system</li></ol>|
|Alternative Flows|If in the Basic Flow the user  enters an invalid username and/or password, the system displays an error message.|
|Postcondition|If login is successful, a success message will be displayed.|


| Usercase | User signs up |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes how a user sign up into blogging system. |
|Precondition|User should not be logged on and not existing.|
|Steps|<ol><li>The user goes to registration form</li><li>The user fills registration form with email, password , and password cobfirmation</li></ol>|
|Alternative Flows|If in the Basic Flow the user  enters an invalid input (existing email, empty fields, short password), the system displays an error message.|
|Postcondition|If signup is successful, a success message will be displayed.|


| Usercase | User signs out |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes user logging out |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user can logout at anytime .</li></ol>|
|Postcondition|The login page will be displayed and user will be requested to login.|



| Usercase | User edits profile |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes user editing profile |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user clicks on edit profile.</li><li>The user can update email and password.</li></ol>|
|Postcondition|A success message is shown for profile update.|




| Usercase | User creates post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes new post creation. |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user creates new post.</li><li>The user fills post title and description.</li><li>The user submits the post.</li></ol>|
|Postcondition|The post is created and found in post list and success message for post creation is displayed.|


| Usercase | User edits post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes user editing post. |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user searches for a post.</li><li>The user selects the desired post to edit.</li><li>The user edits the post title if needed.</li><li>The user edits the post main text if needed.</li><li>The user submits the post after editing.</li></ol>|
|Postcondition|The post edits are reflected in the post and success message for post update is displayed.|


| Usercase | User deletes post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes user removing a post. |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user searches for a post.</li><li>The user can delete the resulting post.</li></ol>|
|Postcondition|The post is deleted and success message for post delete is displayed.|


| Usercase | User searches for post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes when user is searching for a post |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user searches in his/her posts for a post using post description.</li><li>The user find the post.</li></ol>|
|Alternative Flows|If in the Basic Flow the user enters description that does not exist in the posts, there will be no results.|
|Postcondition|The comment dissapears and the number of comments decrease by 1.|



| Usercase | User adds comment to post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes adding a comment for a post |
|Precondition|The user is logged in.|
|Steps|<ol><li>TThe user selects a post.</li><li>The user fills a comment.</li><li>The user submits the comment.</li></ol>|
|Postcondition|The comment is appearing under the post and number of comments increase by 1.|


| Usercase | User deletes comment from a post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes deleting a comment for a post |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user selects a post.</li><li>The user deletes comment for the resulting post.</li></ol>|
|Postcondition|The comment dissapears from under the post and the number of comments decrease by 1.|



| Usercase | User's post only are displayed |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes user sign out from system. |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user can view his/her posts only and not the posts of other users.</li></ol>|
|Postcondition|none.|
