final_command="lt"
if [[ -n "$LT_LOCALHOST" ]]; then
  final_command="$final_command --local-host=$LT_LOCALHOST"
fi
if [[ -n "$LT_PORT" ]]; then
  final_command="$final_command --port=$LT_PORT"
fi
if [[ -n "$LT_SUBDOMAIN" ]]; then
  final_command="$final_command --subdomain=$LT_SUBDOMAIN"
fi
if [[ -n "$LT_OTHER_ARGS" ]]; then
  final_command="$final_command $LT_OTHER_ARGS"
fi

echo "Using LocalTunnel..."
echo "Final command: $final_command"

until eval $final_command
do
  echo "Restarting to use LocalTunnel with : $final_command"
done