output "function_uri_node" {
	value = module.node_function_main
}

output "function_uri_python" {

	value = module.python_function_main.function_url
}
