from modules.common.app import app


@app.route("/tasks")
def index():
    return {"hello": "world"}


@app.route("/tasks")
def index():
    return {"hello": "world"}
