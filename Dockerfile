FROM python:3.11-slim as builder

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl build-essential && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app

COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev

FROM python:3.11-slim

ENV PATH="/root/.local/bin:$PATH"
WORKDIR /app

COPY --from=builder /app/.venv ./.venv


