# Install gcc toolchain, a useful dependency for Rust
sudo apt-get update
sudo apt install build-essential

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Shell may need to be restarted in order for following commands to work

# Also, make sure to add ~/.cargo/bin to the PATH environment variable.
# The following code can be copied in:
# # Configuring Rust development environment
# if [ -d "$HOME/.cargo/bin" ] ; then
#     PATH="$PATH:$HOME/.cargo/bin"
# fi

../common/rust/update_and_verify.sh
