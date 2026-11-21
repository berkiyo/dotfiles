# dotfiles

Collection of various configuration files.


# ollama intel vulkan backend

```
sudo systemctl edit ollama.service
```

then add this

```
[Service]
Environment="OLLAMA_VULKAN=1"
Environment="OLLAMA_IGPU_ENABLE=1"
Environment="GGML_VK_DISABLE_INTEGER_DOT_PRODUCT=1"
```
