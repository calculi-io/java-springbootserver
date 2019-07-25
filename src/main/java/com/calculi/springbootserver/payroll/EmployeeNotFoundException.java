package com.calculi.springbootserver.payroll;

class EmployeeNotFoundException extends RuntimeException {

  static final long serialVersionUID = 1;

  EmployeeNotFoundException(Long id) {
    super("Could not find employee " + id);
  }
}