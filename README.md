<h1>Inception</h1>
<p>
    The Inception project is designed to enhance and solidify understanding of Docker, a powerful platform for developing, shipping, and running applications inside containers. This project encompasses a comprehensive approach, starting from the foundational knowledge of Docker to the practical application of its features. The containers in this project will specifically include:
</p>
<ul>
    <li><strong>Nginx</strong>: A high-performance web server that will serve as a reverse proxy and load balancer.</li>
    <li><strong>WordPress</strong>: A popular content management system (CMS) for building and managing websites.</li>
    <li><strong>MariaDB</strong>: An open-source database management system that will store the data for the WordPress instance.</li>
</ul>

<h2>Objectives</h2>
<ul>
    <li><strong>Knowledge Acquisition</strong>: Collect and study a variety of resources related to Docker, including documentation, tutorials, and best practices.</li>
    <li><strong>Environment Setup</strong>: Set up a robust Docker environment tailored to the project’s needs.</li>
    <li><strong>Container Synchronization</strong>: Create synchronized containers that host different services, ensuring effective communication between them over a Docker network.</li>
    <li><strong>Final Delivery</strong>: Enable the seamless delivery of the final application result to the browser.</li>
</ul>

<h2>Key Concepts</h2>
<p>To successfully complete this project, a deep understanding of the following concepts is essential:</p>
<ul>
    <li><strong>Docker Architecture</strong>: Familiarize yourself with the overall architecture of Docker, including its components and how they interact.</li>
    <li><strong>Namespaces</strong>: Learn about namespaces, which provide isolation for containers, ensuring that processes do not interfere with one another.</li>
    <li><strong>Docker Networks</strong>: Explore the different networking options available in Docker, allowing containers to communicate effectively while maintaining security and performance.</li>
    <li><strong>Docker Images</strong>: Understand the process of creating Docker images, which are templates used to create containers, and how to manage them.</li>
    <li><strong>Containers</strong>: Gain practical experience in managing containers, including starting, stopping, and linking them together to form a cohesive application.</li>
</ul>
<h2>How to Install and Run the Project</h2>
<ol>
    <li>Clone the Repository</li>
    <li>Run the project</li>
    <pre><code>$> make</code></pre>
<h2>How to Install and Run the Project</h2>

<p>Follow these steps to install and run the Inception project:</p>

<ol>
    <li>
        <strong>Prerequisites:</strong>
        <ul>
            <li>Ensure that you have Docker installed on your system. You can download Docker from the official website: <a href="https://www.docker.com/products/docker-desktop" target="_blank">Docker Desktop</a>.</li>
            <li>Verify that Docker is running correctly by executing the following command in your terminal:
                <pre><code>docker --version</code></pre>
            </li>
        </ul>
    </li>

    <li>
        <strong>Clone the Repository:</strong>
        <p>Clone the project repository to your local machine using Git:</p>
        <pre><code>git clone https://github.com/yourusername/inception.git</code></pre>
        <p>Navigate to the project directory:</p>
        <pre><code>cd inception</code></pre>
    </li>

    <li>
        <strong>Docker Compose Setup:</strong>
        <p>Ensure you have a <code>docker-compose.yml</code> file in your project directory. This file defines the services, networks, and volumes for the project. If you don’t have one, create it using the provided configurations.</p>
    </li>

    <li>
        <strong>Build and Run Containers:</strong>
        <p>Build and start the containers using Docker Compose:</p>
        <pre><code>docker-compose up -d</code></pre>
        <p>This command will create and start the containers in detached mode.</p>
    </li>

    <li>
        <strong>Access the Application:</strong>
        <p>Once the containers are running, you can access the services in your browser:</p>
        <ul>
            <li><strong>Nginx:</strong> Open your browser and go to <a href="http://localhost" target="_blank">http://localhost</a>.</li>
            <li><strong>WordPress:</strong> Access WordPress at <a href="http://localhost:8080" target="_blank">http://localhost:8080</a> (or the port you configured).</li>
            <li><strong>MariaDB:</strong> You can connect to MariaDB using a MySQL client with the following credentials:
                <ul>
                    <li>Host: <code>127.0.0.1</code></li>
                    <li>Username: <code>root</code></li>
                    <li>Password: <code>yourpassword</code></li>
                </ul>
            </li>
        </ul>
    </li>

    <li>
        <strong>Stopping the Containers:</strong>
        <p>To stop the running containers, execute:</p>
        <pre><code>docker-compose down</code></pre>
        <p>This command will stop and remove the containers defined in the <code>docker-compose.yml</code> file.</p>
    </li>
</ol>
