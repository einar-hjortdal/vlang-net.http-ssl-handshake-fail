module main

import net.http

fn main() {
	request := http.new_request(.get, 'https://official-joke-api.appspot.com/jokes/random',
		'')
	response := request.do() or { panic(err) }
	println(response.body)
}
