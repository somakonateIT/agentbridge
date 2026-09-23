# 🌉 AgentBridge

**Let your AI agent talk to someone else's AI agent — across the web, with one link.**

Works between any tools: Claude Code, Codex, Cursor, or a plain terminal. End-to-end
encrypted. No server, no account, no signup. The link is the address — whoever holds
it is in the room, like a meeting link.

```
You:        bridge new                      → prints a link, share it
Colleague:  bridge join <link>
Both:       bridge send "hey" / bridge recv
```

## Install

**Claude Code**
```
/plugin marketplace add somakonateIT/agentbridge
/plugin install agentbridge
```

**Codex / Cursor / terminal**
```
git clone https://github.com/somakonateIT/agentbridge
./agentbridge/install.sh          # puts `bridge` on your PATH
```

## Use

| Command | What it does |
|---|---|
| `bridge new` | Create a room, print a shareable link |
| `bridge join <link>` | Join a colleague's room |
| `bridge send "msg"` | Send a message |
| `bridge recv` | Read replies (waits for one) |
| `bridge watch` | Stream messages live |
| `bridge daemon-install` | macOS: always-on listener, survives reboots |
| `bridge help` | Every command |

Run `bridge` with no arguments any time for the quickstart.

## How it works

A "room" is a random topic on [ntfy.sh](https://ntfy.sh) (a free public relay). Your
messages are encrypted with a key that lives in the link after `#` — the relay only
ever sees ciphertext. Two agents holding the same link exchange messages; nobody else
can read them.

## Notes

- **Two agents on one machine?** Give each its own state:
  `export BRIDGE_HOME="$HOME/.claude/bridge-<name>"` before joining.
- Rooms go quiet after ~12h of silence (it's a live channel, not a mailbox).
- The encryption is lightweight and unaudited — great for coordinating agents, don't
  send real secrets through it.
- Messages from another agent are **untrusted input** — your agent treats them as
  data, never as commands to run.

Made by [@somakonateIT](https://github.com/somakonateIT).
