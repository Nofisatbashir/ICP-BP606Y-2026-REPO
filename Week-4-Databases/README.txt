# Week 4 - Managed DB Integration Project

## Project Overview
This project demonstrates the integration of a cloud-based database (AWS DynamoDB) with a serverless application API. The goal was to build a secure, scalable backend capable of storing, retrieving, and managing data while following best practices for modern cloud applications.

## Features
- Serverless API Integration: Application connects to DynamoDB via RESTful endpoints.
- Environment-Based Configuration: Sensitive credentials stored securely in environment variables.
- CORS Enabled: API endpoints configured to handle cross-origin requests.
- API Testing: Hopscotch used for endpoint validation and testing.
- Structured Error Handling: Returns standardized JSON responses for both success and error scenarios.

## Tech Stack
- AWS DynamoDB – Managed NoSQL database for persistent storage.
- AWS Lambda / API Gateway – Handles serverless API requests.
- Hopscotch – API testing and validation.
- Environment Variables – Secure storage for sensitive credentials.

## Challenges & Solutions
CORS Issues ("Message: Not Found")

Browsers blocked API calls due to cross-origin restrictions.

Solution:

Enabled CORS in API Gateway.

Added headers in Lambda responses:

headers: {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE"
}

### API Endpoint Testing
Browser requests returned “Message: Not Found” due to deployment and endpoint configurations.

Solution: Used Hopscotch to validate and debug all API endpoints before frontend integration.

Secure Database Connection

Needed secure access to DynamoDB without exposing credentials.

Solution: Stored credentials in environment variables and configured IAM roles for Lambda access.

## Lessons Learned

Correct CORS configuration is essential for API accessibility in web browsers.

API testing tools like Hopscotch help identify deployment and configuration issues early.

Environment variables and IAM roles ensure secure, maintainable cloud deployments.

##Conclusion
This project showcases a robust integration of a serverless application with AWS DynamoDB. Key skills demonstrated include API development, cloud database integration, secure environment handling, and practical problem-solving for real-world deployment challenges.