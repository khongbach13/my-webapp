<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Introduction to Docker</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1, h2, h3 {
            color: #333;
        }
        code {
            background-color: #eee;
            padding: 2px 4px;
            border-radius: 4px;
        }
        pre {
            background-color: #f4f4f4;
            padding: 10px;
            border-radius: 4px;
            overflow-x: auto;
        }
        ul, ol {
            margin: 10px 0;
            padding: 0 20px;
        }
        li {
            margin-bottom: 10px;
        }
        a {
            color: #007bff;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .sidebar {
            background-color: #f9f9f9;
            padding: 10px;
            border-left: 1px solid #ddd;
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Introduction to Docker</h1>
    </header>

    <div class="container">
        <h2>What is Docker?</h2>
        <p>Docker is an open-source platform designed to simplify the deployment, scaling, and management of applications using containerization technology. Containers encapsulate an application and its dependencies into a single, lightweight, and portable unit. This ensures that the application runs consistently across various environments, from a developer's laptop to a production server.</p>

        <h2>Key Features of Docker</h2>
        <ul>
            <li><strong>Portability:</strong> Docker containers can run on any machine that has Docker installed, making it easy to move applications between different environments, such as development, testing, and production.</li>
            <li><strong>Efficiency:</strong> Containers share the host OS kernel, which means they are more resource-efficient than traditional virtual machines. This leads to faster startup times and lower overhead.</li>
            <li><strong>Isolation:</strong> Each container operates in its own isolated environment, preventing conflicts between applications and enhancing security.</li>
            <li><strong>Scalability:</strong> Docker makes it easy to scale applications horizontally by adding or removing containers as needed, allowing for better resource management and handling increased loads efficiently.</li>
            <li><strong>Version Control:</strong> Docker images can be versioned, enabling you to track changes and roll back to previous versions if needed. This ensures consistency and stability in application deployments.</li>
        </ul>

        <h2>Basic Docker Commands</h2>
        <p>Here are some essential Docker commands to get you started:</p>
        <pre><code>docker --version           # Check Docker version
docker pull <image>            # Download a Docker image from a repository
docker run <options> <image>   # Run a Docker container with specified options
docker ps                      # List all running containers
docker ps -a                   # List all containers, including stopped ones
docker stop <container_id>     # Stop a running container
docker rm <container_id>       # Remove a stopped container
docker rmi <image>             # Remove a Docker image from the local repository
docker logs <container_id>     # View logs of a running container
docker exec -it <container_id> <command> # Execute a command inside a running container
        </code></pre>

        <h2>Common Use Cases for Docker</h2>
        <p>Docker is widely used in various scenarios, including:</p>
        <ul>
            <li><strong>Development:</strong> Developers use Docker to create consistent development environments, avoiding issues related to differences between local and production environments.</li>
            <li><strong>Testing:</strong> Automated testing can be performed in isolated containers, ensuring that tests run in a clean and controlled environment every time.</li>
            <li><strong>Continuous Integration and Deployment (CI/CD):</strong> Docker is commonly used in CI/CD pipelines to build, test, and deploy applications. Containers provide a consistent environment for these processes, improving reliability and efficiency.</li>
            <li><strong>Microservices:</strong> Docker supports the microservices architecture by allowing you to run multiple services in separate containers, each responsible for a specific function. This approach simplifies scaling, deployment, and management of services.</li>
        </ul>

        <h2>Getting Started with Docker</h2>
        <p>Follow these steps to get started with Docker:</p>
        <ol>
            <li><a href="https://www.docker.com/get-started" target="_blank">Download and install Docker</a> from the official website. Docker provides installation guides for various operating systems.</li>
            <li>After installation, open a terminal or command prompt.</li>
            <li>Verify the installation by running the command <code>docker --version</code> to check the installed Docker version.</li>
            <li>Run the command <code>docker run hello-world</code> to download and run a test container that verifies Docker is set up correctly.</li>
            <li>Explore Docker's documentation and tutorials to learn more about advanced features and best practices: <a href="https://docs.docker.com/" target="_blank">Docker Documentation</a></li>
        </ol>
    </div>

    <div class="sidebar">
        <h3>Related Resources</h3>
        <ul>
            <li><a href="https://www.docker.com/resources/what-container" target="_blank">What is a Container?</a></li>
            <li><a href="https://www.docker.com/resources/what-is-docker" target="_blank">What is Docker?</a></li>
            <li><a href="https://www.docker.com/blog/" target="_blank">Docker Blog</a></li>
            <li><a href="https://hub.docker.com/" target="_blank">Docker Hub</a></li>
        </ul>
    </div>
</body>
</html>

