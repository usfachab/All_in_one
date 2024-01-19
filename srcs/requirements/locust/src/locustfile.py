from locust import HttpUser, task, between

class HelloWorldUser(HttpUser):
    wait_time = between(1, 5)
    
    def on_start(self):
        # Disable SSL verification
        self.client.verify = False

    @task
    def index_page(self):
        self.client.get("/")

    @task
    def slow_page(self):
        self.client.get("/slow")