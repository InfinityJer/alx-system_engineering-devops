Components and Explanations:

User's Computer: Represents the user's device.

DNS: Represents the domain name resolution process.

Load Balancer (HAproxy): Distributes incoming requests across multiple application servers to ensure even load distribution and better performance.

Application Servers: Multiple servers that host the application code and process user requests. They can handle requests independently.

Application Files: Your code base that comprises the website/application.

Database (MySQL): Stores data for the application.

Additions and Explanations:

Additional Server: By adding more servers, you increase the infrastructure's capacity and redundancy.

Load Balancer: Added to distribute requests and prevent overloading a single server.

Load Balancer Distribution Algorithm:

Load balancer uses a Round Robin distribution algorithm.
It forwards each incoming request to the next available application server in a circular manner.
Active-Active vs. Active-Passive:

Active-Active: Both load balancers are actively distributing traffic. Suitable for high-traffic scenarios.
Active-Passive: Only one load balancer is active while the other is in standby. Suitable for failover scenarios.
Primary-Replica (Master-Slave) Database Cluster:

Primary Node (Master): Handles both read and write operations.
Replica Node (Slave): Replicates data from the Primary node and can handle read operations.
Database Node Differences:

Primary: Handles write operations and is the source of truth.
Replica: Handles read operations and provides redundancy.
Issues with the Infrastructure:

Single Points of Failure (SPOF): Potential SPOFs include the load balancer, application servers, and database.
Security Issues: Lack of firewall protection and HTTPS encryption.
No Monitoring: No mechanisms to monitor the health and performance of servers.
