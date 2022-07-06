FROM ubuntu:focal

RUN apt-get update && apt-get install -y \
  build-essential \
  python3 \
  curl \
  git
RUN apt-get update

WORKDIR /example
ADD run.sh /example

RUN git clone https://github.com/rust-lang/rust || true
RUN (cd rust && git checkout 0a7f2c3a025c8bab1e10ccec6208a4c19b057b26)
RUN (cd rust && echo "[llvm]\ndownload-ci-llvm = true">config.toml)
RUN (cd rust && python3 x.py build library/std compiler/rustc src/tools/cargo)
