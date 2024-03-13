# Pull

```
docker pull mirkotp/cert-verify
```

# Run

Create a local directory for trusted certificates and one for untrusted certificates you wish to verify. Map respectively to /CA and /Untrusted.

Example:
```
docker run -v ./localCA/:/CA/ -v ./localUntrusted/:/Untrusted/ mirkotp/cert-verify
```
