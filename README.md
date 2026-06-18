# Corruption Engine

Corruption Engine is an offline-first, text-based roguelike built with Flutter.  
Explore unstable rooms, face evolving threats, and survive a world driven by a spreading corruption system that mutates everything it touches.

This project is designed to be mobile-heavy, lightweight, and fully local — no server required.

---

## 📱 Features

- **Offline-First Gameplay** — Play anywhere, no connection needed.
- **Procedural Rooms** — Every run generates new layouts, hazards, and events.
- **Dynamic Threat System** — Enemies scale, mutate, and adapt as corruption rises.
- **Corruption Engine** — A global force that spreads, destabilizes, and reshapes the world.
- **Text-Driven UI** — Clean, minimal, terminal-inspired interface.
- **Expandable Architecture** — Built for new biomes, threats, items, and mechanics.
- **Future Monetization Support**  
  - Rewarded ads  
  - Cosmetic themes  
  - Optional upgrades  

---

## 🧩 Project Structure
│
├── .gitignore
├── README.md
├── pubspec.yaml
├── analysis_options.yaml
│
├── assets/
│   ├── data/
│   │   ├── threats.json
│   │   ├── hazards.json
│   │   ├── interactables.json
│   │   ├── rooms.json
│   │   └── items.json
│   └── fonts/
│
├── lib/
│   ├── core/
│   ├── ui/
│   ├── data/
│   ├── platform/
│   └── main.dart
│
├── test/
│
└── scripts/
---

## 🧠 Engine Overview

### **Room Engine**
Handles procedural room generation, metadata, corruption levels, and transitions.

### **Threat Engine**
Controls enemy stats, scaling, mutation, and behavior.

### **Hazard Engine**
Manages traps, environmental dangers, and corruption-triggered events.

### **Corruption Engine**
A global + local system that spreads, pulses, and destabilizes rooms over time.

### **Interactable Engine**
Consoles, caches, switches, puzzles, corrupted objects.

### **Combat Engine**
Turn-based actions, damage resolution, and status effects.

---

## 📦 Data Files

All game content is stored in JSON for easy editing:
|
|
├── assets/
│   ├── data/
│   │   ├── threats.json
│   │   ├── hazards.json
│   │   ├── interactables.json
│   │   ├── rooms.json
│   │   └── items.json
│   └── fonts/

---

## 🛠 Development Workflow

### **On Android (Mobile-Only Workflow)**  
- Use **Acode** to edit Flutter/Dart files  
- Use **Termux** to run pure Dart engine tests  
- Use **GitHub Mobile** to commit and push changes  

### **On Desktop (Optional)**
- Run Flutter UI  
- Build APK  
- Test animations and layouts  

---

## 🚀 Getting Started

### **Clone the repo**
git clone https://github.com/bwlight/corruption_engine.git

### **Install dependencies**

flutter pub get

### **Run the app**

Flutter run

---

## 🗺 Roadmap

- [ ] Core engine implementation  
- [ ] Room generator v1  
- [ ] Threat system v1  
- [ ] Corruption system v1  
- [ ] Basic UI (text feed + choices)  
- [ ] Inventory + items  
- [ ] Save/load system  
- [ ] Rewarded ads integration  
- [ ] Cosmetic themes  
- [ ] New biomes + threats  

---

## 📄 License

This project is currently **closed-source**.  
A license may be added later.

---

## 🧑‍💻 Author

Created by **Bryan Lightbody**  