# homebrew-kdx

Homebrew tap for [kdx](https://github.com/brannn/kdx) - K8s Discovery Experience

## Installation

```bash
brew install brannn/kdx/kdx
```

## About kdx

kdx is a command-line tool for exploring and discovering resources in Kubernetes clusters. It provides commands for listing services, pods, and understanding cluster topology and relationships.

### Features

- Service discovery and listing
- Pod exploration with filtering
- Service descriptions with relationships
- Service topology analysis
- Graph visualization (DOT and SVG formats)
- Multiple output formats (table, JSON)
- Cross-platform support (macOS, Linux)

### Usage

```bash
# List all services
kdx services

# Explore a specific service
kdx describe my-service

# Visualize service dependencies
kdx graph
```

## Repository

Main project: https://github.com/brannn/kdx
