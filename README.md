# MDM2C - Combat Log Analyzer (C# Version)

MDM2C is a C# implementation of the MDM2 combat log analyzer. It captures network packets from game traffic, analyzes combat data in real-time, and provides a web-based interface for viewing DPS statistics.

## Features

- Real-time packet capture using SharpPcap
- TCP stream reassembly and packet parsing
- Combat data analysis (damage, healing, buffs)
- WebSocket-based real-time data streaming
- Web-based UI with damage rankings and detailed statistics
- Single executable deployment

## Requirements

- Windows x64
- WinPcap or Npcap installed
- Administrator privileges (for packet capture)

## Building

Run the build script to create a single executable:

```batch
build.bat
```

The build script will:
1. Clean previous builds
2. Restore NuGet packages
3. Build the project in Release mode
4. Publish as a self-contained single file executable

The output executable will be located at:
`bin\Release\net8.0\win-x64\publish\MDM2C.exe`

## Usage

1. Run MDM2C.exe as Administrator
2. Open your web browser and navigate to: http://localhost:8080
3. The application will automatically capture packets from port 16000
4. Combat statistics will be displayed in real-time

## Configuration

Edit `Resources\content\settings.json` to configure:
- `Port`: Web server port (default: 8080)
- `Iface`: Network interface name (default: auto-detect)
- `Debug`: Enable debug mode (default: false)

## Project Structure

```
MDM2C/
├── Core/           # Core logic (analyzers, mappers)
├── Data/           # Data models and structures
├── Network/        # Networking (packet capture, WebSocket)
├── Resources/      # Embedded resources (HTML, JSON)
└── UI/             # Web server components
```

## Key Components

- **PacketStreamer**: Captures and reassembles TCP packets
- **PacketParser**: Parses binary packet data into structured format
- **CombatLogAnalyzer**: Analyzes combat data and maintains statistics
- **WebSocketServer**: Streams real-time data to web clients
- **WebServer**: Serves the web interface

## License

This project is based on MDM2 and follows the same licensing terms.