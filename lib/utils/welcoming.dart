int getCurrentHour() {
  return DateTime.now().toLocal().hour;
}

String returnWelcoming() {
  if (getCurrentHour() < 11) return "Доброго ранку!";
  if (getCurrentHour() >= 11 && getCurrentHour() < 18) return "Доброго дня!";
  if (getCurrentHour() <= 18 && getCurrentHour() < 22) return "Доброго вечора!";

  return "Доброї ночі!";
}
