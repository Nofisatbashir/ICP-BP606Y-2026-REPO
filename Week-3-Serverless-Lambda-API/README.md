# Week 3 – Serverless: API with AWS Lambda

## Project Overview
This project demonstrates how to build a serverless HTTP API using AWS Lambda and Amazon API Gateway.  
The API is triggered via an HTTP request, executes backend logic inside a Lambda function, and returns a structured response without provisioning or managing servers.

The goal of this task is to understand event-driven architecture, serverless compute, and the operational benefits of AWS-managed services such as scalability, cost efficiency, and reduced infrastructure overhead.

---

## Tech Stack
- AWS Lambda – Serverless compute for executing backend logic
- Amazon API Gateway – HTTP interface to expose Lambda as a REST/HTTP API
- IAM – Permission management between API Gateway and Lambda
- JSON – Request and response payload format

---

### Flow Explanation
1. A client sends an HTTP request to the API Gateway endpoint.
2. API Gateway validates and forwards the request to the Lambda function.
3. Lambda executes the function logic.
4. A response is returned to API Gateway.
5. API Gateway sends the response back to the client.

---

## Implementation Steps

## 1. Create the Lambda Function
- Runtime: Python / Node.js
- Execution role with basic logging permissions
- Function logic handles incoming events and returns a JSON response

Example response:
```json
{
  "statusCode": 200,
  "body": "Hello from AWS Lambda!"
}
```
---

## 2. Configure API Gateway
- Create an HTTP API
- Add Lambda as the integration target
- Configure routes (e.g., GET /hello)
- Enable auto-deployment to a default stage

## 3. Permissions Configuration
- Grant API Gateway permission to invoke the Lambda function using IAM

- Ensure least-privilege access is enforced

## 4. Test the API

Copy the API endpoint URL

Test using:

- Browser
- Postman
- curl command

## Cold Start Considerations

Cold starts occur when AWS initializes a Lambda execution environment after a period of inactivity.

## Key Observations:

- First request may have slightly higher latency
- Subsequent requests are faster (warm start)
- Runtime choice and package size impact cold start duration

## Best Practices:

- Keep function code lightweight
- Avoid unnecessary dependencies
- Use appropriate memory allocation
- Consider provisioned concurrency for latency-sensitive workloads

### Deliverables

Lambda function source code

API Gateway endpoint URL

Screenshot of successful API invocation


## Learning Outcomes

Understand serverless architecture and event-driven systems

Deploy and invoke AWS Lambda functions

Integrate Lambda with API Gateway

Manage permissions using IAM

Identify and mitigate cold start behavior

## Conclusion
This project highlights the power of serverless computing by building a fully functional API without managing servers. Using AWS Lambda and API Gateway enables rapid development, automatic scaling, and cost-efficient execution, making it ideal for modern cloud-native applications.
