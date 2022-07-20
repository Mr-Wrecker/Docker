from flask import Flask
import redis


app = Flask(__name__)


@app.route('/')
def say_hello():
    r = redis.Redis(host='Redis', port=6379, db=0)
    name = r.get('name').decode()
    return f"Hello {name}!\n"


if __name__ == '__main__':
    app.run('0.0.0.0', 5000)
