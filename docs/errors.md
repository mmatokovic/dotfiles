# HTTP Status Codes

API attempts to return appropriate HTTP status codes for every request.

#### 200 OK - Success!

```javascript
curl -i https://api.mmatokovic.dev/v1
```

```none
Status: 200 OK 
Content-Type: application/json; charset=utf-8
```

#### 422 Unprocessable Entity - Semantic error in provided data

The validation errors are tuples with the field name and a localized error message. Note that a single field may yield multiple validation errors.

```javascript
curl -i https://api.mmatokovic.dev/v1
```

```json
Status: 422 Too Many Requests
Content-Type: application/json; charset=utf-8
{
  "type": "/some/uri-reference",
  "title": "some title for the error situation",
  "status": 422,
  "detail": "some description for the error situation",
  "instance": "/some/uri-reference#specific-occurrence-context"
}
```

#### 429 Too Many Requests - Rate Limit Exceeded

The returned HTTP headers of an API request show the current rate limit status:

```javascript
curl -i https://api.mmatokovic.dev/v1
```

**X-Rate-Limit** - Shows the limit for the operation that you are performing. The maximum number of requests permitted to make in the current rate limit window.

**X-Rate-Remaining** - Specifies how long you must wait before making a new request, in seconds. The number of requests remaining in the current rate limit window.

If the reset time is needed in a different format then any modern programming language can be used to achieve this. For example, if opening up the console of a web browser, the reset time can be returned as a JavaScript Date object as follows:

```javascript
new Date(1533873527 * 1000)
=> Fri Aug 10 2018 03:58:47 GMT+0000 (UTC)
```

You can check your rate limit status without incurring an API hit, but accessing this endpoint is limited to once per second.

##### Responding to Rate Limiting Conditions

Once a rate limit window is exceeded an error response is returned and the HTTP header Retry-After indicates how long to wait (in seconds) before making a new request:

```json
Status: 429 Too Many Requests
Content-Type: application/json; charset=utf-8
X-RateLimit-Limit: 3600
X-RateLimit-Remaining: 0
X-RateLimit-Reset: 1533873527
Retry-After: 30
{
  "type": "/some/uri-reference",
  "title": "some title for the error situation",
  "status": 429,
  "detail": "some description for the error situation",
  "instance": "/some/uri-reference#specific-occurrence-context"
}
```

This response instructs your app to wait 30 seconds before attempting to send a new request.

By programmatically evaluating the Retry-After header you can wait for the indicated number of seconds before retrying the same request.
