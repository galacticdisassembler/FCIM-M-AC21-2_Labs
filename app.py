from flask import Flask, jsonify, request
from typing import Dict

app = Flask(__name__)


@app.route('/hello', methods=['GET'])
def helloworld() -> Dict[str, str]:
	"""
	Returns a JSON object with a key of "data" and a value of "Hello World"
	"""
	if(request.method == 'GET'):
		data = {"data": "Hello World"}
		return jsonify(data)


if __name__ == '__main__':
	app.run(debug=True)
