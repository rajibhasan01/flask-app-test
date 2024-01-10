from flask import Flask


app = Flask(__name__)


@app.route('/info', methods=['GET'])
def info():
	return "I'm Alive, Man", 200


if __name__ == '__main__':
	app.run(debug=True, host='0.0.0.0', port='5000')

