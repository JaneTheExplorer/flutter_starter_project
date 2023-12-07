class ToDo {
  String? id;
  String? todotext;
  bool isDone;

  ToDo({required this.id, required this.todotext, this.isDone = false});

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todotext: 'Morning Exercise', isDone: true),
      ToDo(id: '02', todotext: 'Buy Groceries', isDone: true),
      ToDo(
        id: '03',
        todotext: 'Check Emails',
      ),
      ToDo(
        id: '04',
        todotext: 'Team Meeting',
      ),
      ToDo(
        id: '05',
        todotext: 'Work on mobile apps for 2 hours',
      ),
      ToDo(
        id: '06',
        todotext: 'Dinner with Jane',
      ),
      ToDo(
        id: '07',
        todotext: 'Wake up, exercise, shower and have breakfast',
      ),
      ToDo(
        id: '08',
        todotext: 'Morning Routine',
      ),
      ToDo(
        id: '09',
        todotext: 'Review and respond to important emails',
      ),
      ToDo(
        id: '10',
        todotext: 'Work on Project A',
      ),
      ToDo(
        id: '11',
        todotext: 'Focus on tasks related to project A',
      ),
      ToDo(
        id: '12',
        todotext: 'Team Meeting',
      ),
      ToDo(
        id: '13',
        todotext: 'Attend the weekly team meeting',
      ),
      ToDo(
        id: '14',
        todotext: 'Work on Project B',
      ),
      ToDo(
        id: '15',
        todotext: 'Concentrates on tasks for Project B',
      ),
      ToDo(
        id: '16',
        todotext: 'Client Call',
      ),
      ToDo(
        id: '17',
        todotext: 'Discuss project updates with a client',
      ),
    ];
  }
}
