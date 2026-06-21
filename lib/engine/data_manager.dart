import 'engine/loaders/entity_loader.dart';
import 'engine/loaders/item_loader.dart';
import 'engine/loaders/room_loader.dart';
import 'engine/loaders/quest_loader.dart';

class DataManager {
  static final DataManager _instance = DataManager._internal();
  factory DataManager() => _instance;

  DataManager._internal();

  // Loaded data
  List<Entity> entities = [];
  List<Item> items = [];
  List<Room> rooms = [];
  List<Quest> quests = [];

  // Loaders
  final EntityLoader _entityLoader = EntityLoader();
  final ItemLoader _itemLoader = ItemLoader();
  final RoomLoader _roomLoader = RoomLoader();
  final QuestLoader _questLoader = QuestLoader();

  /// Loads all game data at startup.
  Future<void> loadAll() async {
    entities = await _entityLoader.loadEntities(
      "assets/data/entities/entities.json",
    );

    items = await _itemLoader.loadItems(
      "assets/data/items/items.json",
    );

    rooms = await _roomLoader.loadRooms(
      "assets/data/world/rooms/rooms.json",
    );

    quests = await _questLoader.loadQuests(
      "assets/data/quests/main/first_steps.json",
    );
  }

  /// Quick lookup helpers
  Entity? getEntity(String id) =>
      entities.firstWhere((e) => e.id == id, orElse: () => null);

  Item? getItem(String id) =>
      items.firstWhere((i) => i.id == id, orElse: () => null);

  Room? getRoom(String id) =>
      rooms.firstWhere((r) => r.id == id, orElse: () => null);

  Quest? getQuest(String id) =>
      quests.firstWhere((q) => q.id == id, orElse: () => null);
}