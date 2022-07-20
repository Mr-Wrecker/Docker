from flask import Flask, request
import redis


app = Flask(__name__)


@app.route('/')
def set_name():
    r = redis.Redis(host='Redis', port=6379, db=0)
    try:
        new = request.args.get('name')
        if new == None:
            raise
        r.set('name', str(new))
        return f"Name Changed to {new}."
    except:
        return f"Error in Read Parameter."


if __name__ == '__main__':
    app.run('0.0.0.0', 5000)
