FROM sameli/manylinux2014_x86_64_cuda_12.3

RUN curl -LsSf https://astral.sh/uv/install.sh | sh && \
  uv v --seed --python 3.11

RUN uv pip install --upgrade pip setuptools wheel

RUN uv pip install \
    torch==2.4.0 \
    torchvision==0.19.0 \
    torchaudio==2.4.0 \
    --index-url https://download.pytorch.org/whl/cu121

ENV FORCE_CUDA=1 MAX_JOBS=32

RUN echo "source .venv/bin/activate" >> ~/.bashrc
