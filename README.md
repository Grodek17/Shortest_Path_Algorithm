# Shortest Path Algorithm – Dijkstra (C++)

An implementation of Dijkstra's shortest path algorithm on a 2D terrain grid, using a custom binary min-heap priority queue.

Developed as a university Algorithms and Data Structures project, with additional support for elevation-dependent movement costs and scheduled ski lifts.

## Features

- **Dijkstra's algorithm** for finding the minimum travel time between two points.
- **Custom binary min-heap** implemented from scratch, without `std::priority_queue`.
- **2D terrain representation** using dynamically allocated arrays.
- **Elevation-dependent movement costs:** Moving uphill takes longer than moving downhill or across flat terrain.
- **Scheduled ski lifts:** One-way connections with travel times and departure intervals, including waiting time calculations.

## Implementation

The terrain is represented as a two-dimensional grid. Each field stores its elevation, shortest known travel time, and visited status.

The algorithm uses a custom binary min-heap to prioritize the next field with the lowest known arrival time.

Movement is restricted to four adjacent cells, with a cost of:

- **Uphill:** `destination_height - current_height + 1`
- **Flat or downhill:** `1` minute

Ski lifts introduce additional directed connections. Their total cost includes both the waiting time until the next departure and the ride duration.

## Build & Run

**Requirements:** G++ and GNU Make.

```bash
git clone https://github.com/Grodek17/Shortest_Path_Algorithm.git
cd Shortest_Path_Algorithm
make
```

Run the included examples:

```bash
./shortest_path < examples/terrain_only.txt
# Expected output: 18

./shortest_path < examples/terrain_with_lifts.txt
# Expected output: 22
```

## Project Structure

```text
src/main.cpp                    Main Dijkstra implementation
prototypes/minHeapPrototype.cpp Early min-heap prototype
examples/                       Sample input files
Makefile                        Build instructions
```

## Project Background

Created as the second project for the Algorithms and Data Structures course.

The project focuses on graph algorithms, priority queues, dynamic memory management, and adapting shortest-path algorithms to additional constraints.

The original algorithmic implementation has been preserved, with minor fixes and improvements to the repository structure and build process.