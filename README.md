# Authenticator Reader
Reads Google Authenticator export QR code and shows all current 2FA codes

## Usage
- Use a QR code reader to get the link
- Create the `LINK` env var. Example:
```bash
export LINK=otpauth-migration://offline?data=CjEKCkhlbGxvId6tvu8SGEV4YW1wbGU6YWxpY2VAZ29vZ2xlLmNvbRoHRXhhbXBsZTAC
```
- Run the image
```bash
docker run -e LINK --rm eduardobcastro/authenticator-reader
```
Expected output:
```bash
Example:alice@google.com: 357356
```

Sources:

[Using oathtool](https://www.cyberciti.biz/faq/use-oathtool-linux-command-line-for-2-step-verification-2fa/)

[otpauth](https://github.com/dim13/otpauth)
