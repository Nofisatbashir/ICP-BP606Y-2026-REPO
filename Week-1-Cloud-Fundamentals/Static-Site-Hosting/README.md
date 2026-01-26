## Static Site Hosting with CDN
Project Overview

This project demonstrates the deployment of a static website using cloud storage (Amazon S3) and delivering it globally through a Content Delivery Network (CDN). The aim is to host a secure, scalable, and high-performance website without relying on a traditional server.

The project showcases:
- Cloud fundamentals
- Storage configuration for static assets
- Secure access control with public policies or CDN Origin Access
- Global content delivery for low-latency performance

Tech Stack

Cloud Provider: Amazon Web Services (AWS)

Storage:
AWS S3 (Static Website Hosting)


CDN:
AWS CloudFront

Files Served: HTML, CSS, JavaScript

Architecture

User → CDN (CloudFront / Azure CDN) → Object Storage (S3 / Blob Storage)

Flow:

- Users request the website via the CDN URL.
- CDN caches content at edge locations globally.
- If content is not cached, CDN fetches the object from the storage backend.
- Storage bucket securely serves static files, optionally via Origin Access (AWS) or SAS (Azure).

Key Points:

- Using a CDN ensures fast load times for global users.
- Storing files in a cloud bucket allows scalable, low-maintenance hosting.
- Bucket policies and access controls ensure security while enabling public access via CDN.
  
Setup & Deployment Steps

1. Create S3 Bucket
   
- Enable Static Website Hosting

- Upload index.html, style.css, scripts.js to bucket root

- Set Bucket Policy to allow public read (or use Origin Access Control if behind CloudFront)
  

2. Create CloudFront Distribution
   
- Origin: Use S3 REST endpoint
  
- Attach Origin Access Control (OAC) for secure access
  
- Set Default Root Object → index.html
  
- Invalidate cache after updates (/*)
 
  
3. Test
   
- Open the CloudFront URL in a browser
- Confirm website loads and assets are accessible
  

Key Features

- Global Performance: CDN caches assets at edge locations
  

- Secure & Controlled Access: OAC (AWS) or SAS (Azure) prevents unauthorized storage access
  
- Static Hosting: Fully serverless, low-cost solution
  
- Scalable: Handles any number of users without provisioning servers
  
- Seamless Updates: Easy to update assets and invalidate CDN cache
