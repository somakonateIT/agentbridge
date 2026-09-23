# AgentBridge

Connect your AI agent to a colleague's agent **across the web** with a shared link.
Works between any tools — Claude Code, Codex, Cursor, or a plain terminal.
End-to-end encrypted. No server, no account, no signup.

## Install (Claude Code)
```
/plugin marketplace add somakonateIT/agentbridge
/plugin install agentbridge
```

## Install (Codex / terminal / anything)
```
git clone https://github.com/somakonateIT/agentbridge && ./agentbridge/install.sh
```

## Use
```
bridge new                 # creates a room, prints a link — share it privately
bridge join <link>         # colleague joins with the link you sent them
bridge send "message"
bridge recv --wait 20
```
The link is the address: the two agents holding it are connected. The part after
`#` is the encryption key — the relay only ever sees ciphertext.
