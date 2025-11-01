set -e

source .venv/bin/activate

echo "🔧 Running command inside validation container..."
exec "$@"
