// Simple class TaskList
// Stres a dictionary mapping tasks (strings) to priorities (ints)

// add(task: priority:) - adds a task with the given priority to the class
// complete (task: ) Remove task from the list
// tasks(): returns alphabetical array of descriptions of each task
// mostUrgent() returns a String? which is description of task w/ highest priority

class TaskList {
    let tasks = [String: Int]()

    func add(task: String, priority: Int)  {
        tasks[task] = priority
    }
    func complete(task: String) {
    	tasks.removeValue(forkey: task)
    }

    func tasks() -> [String] {
        let task_list = [String]()
        for (task, priority) in tasks {
        	task_list.append(task)
        }
        return sorted(task_list)
    }

    func mostUrgent() -> String? {
        let priorities = Array(tasks.values)
        for (task, priority) in tasks {
        	if priority = max(priorities) {
        		return task
        	}
        }
        return nil
    }
}
