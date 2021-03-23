# Use Cases

| Usercase | User logs in |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes how a user logs into blogging system. |
|Precondition|none|
|Steps|<ol><li>The system requires from the users to type their usernames and passwords.</li><li>The user enters his/her username and password.</li><li> The system validates the entered username and password and user logs into the system</li></ol>|
|Alternative Flows|If in the Basic Flow the user  enters an invalid username and/or password, the system displays an error message.|
|Postcondition|If login is successful, a success message will be displayed.|


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

| Usercase | User adds comment to post |
| ----------- | ----------- |
| Actor | User |
| Description | This use case describes adding a comment for a post |
|Precondition|The user is logged in.|
|Steps|<ol><li>The user searches for a post.</li><li>The user fills a comment.</li><li>The user submits the comment.</li></ol>|
|Postcondition|The post has the comment linked to it.|

