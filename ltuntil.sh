final_command="lt"
if [[ -n "$LT_LOCALHOST" ]]; then
  echo "--local-host is set to $LT_LOCALHOST"
  final_command="$final_command --local-host=$LT_LOCALHOST"
fi
if [[ -n "$LT_PORT" ]]; then
  echo "--port is set to $LT_PORT"
  final_command="$final_command --port=$LT_PORT"
fi
if [[ -n "$LT_SUBDOMAIN" ]]; then
  echo "--subdomain is set to $LT_SUBDOMAIN"
  final_command="$final_command --subdomain=$LT_SUBDOMAIN"
fi
if [[ -n "$LT_OTHER_ARGS" ]]; then
  echo "Other arguments are set to $LT_OTHER_ARGS"
  final_command="$final_command $LT_OTHER_ARGS"
fi

echo "Using LocalTunnel..."
echo "Final command: $final_command"

until eval $final_command
do
  echo "Restarting to use LocalTunnel with : $final_command"
done