# Lab #1, 22110172, Vũ Văn Việt, INSE33480E
# Task 1: Exploring HTTP messages
**Description**: Student may use customized docker container, VMs or whichever virtual machine for this lab.

**Question 1**: *Identify request line, header lines, blank line of HTTP request message, as well as the Status line, Header lines, blank line, Entity body of HTTP response message?*  
**Answer 1**:
Request line of HTTP request message: GET / HTTP/1.1 <br>
Header lines of HTTP request message (sample): <br>
Host: localhost:5050 <br>
Connection: keep-alive <br>
Cache-Control: max-age=0 <br>
... (other headers) <br>
Status line of HTTP response message: <span style="color:blue">HTTP/1.1 304 Not Modified </span><br>
Header lines of HTTP response message (sample): 
Date: Mon, 15 Apr 2024 03:33:33 GMT <br>
Server: Apache <br>
Last-Modified: Mon, 18 Mar 2024 03:15:15 GMT <br>
ETag: "1b6-613e6c4399123" <br>
... (other headers) </span>

Blank line of HTTP response message: The line immediately following the headers, separating headers from the entity body (which is empty in this case).

**Question 2**: *Is your browser running HTTP version 1.0 or 1.1? What version of HTTP is the server running?*

**Answer 2**:
- Browser's HTTP version: HTTP/1.1 (as indicated by HTTP/1.1 in the request line) 
- Server's HTTP version: HTTP/1.1 (as indicated by HTTP/1.1 in the status line)

# Task 2: Http conditional GET/Response Interaction
**Description**: Given the screenshot of http toolkit:

<img width="726" alt="Screenshot 2023-05-02 165126" src="https://github.com/quang-ute/myprojects/assets/57078914/5b008df9-130c-4501-90d9-fb09f9a89a35">

**Question 1**: *Inspect the contents of the first HTTP GET request from your browser to the server. Do you see an “IF-MODIFIED-SINCE” line in the HTTP GET?*

**Answer 1**:
There is an "If-Modified-Since" line in the HTTP GET request

This is a way for the browser to request that content be returned only if it has been modified since the specified time

**Question 2**: *What is the HTTP status code and phrase returned from the server in response to this second HTTP GET? Did the server explicitly return the contents of the file? Explain.*

**Answer 2**: No content is sent back.

In my opinion it shows that the content has not changed since the specified time, so the server does not need to send the content back to the browser.
# Task 3: Examine Http request methods
**Description**: Given the screenshot of http toolkit:

<img width="829" alt="Screenshot 2023-05-02 171034" src="https://github.com/quang-ute/myprojects/assets/57078914/07eb9d96-0ac2-4891-986a-29f2593fa3e3">

**Question 1**: Information being sniffed

**Answer 1**: From my perspective, it demonstrates different methods of sending form data to the server and how the server responds based on the request type. The resulting HTML pages provide insights into how the server processes and presents the submitted data back to the user.

**Question 2**: What is encryption

![Screenshot 2023-07-02 215333](https://github.com/quang-ute/myprojects/assets/57078914/6b9b0fe0-af40-4d56-a505-fcf5e055736e)

**Answer 2**:
*Examine encrypt password authentication*



 
