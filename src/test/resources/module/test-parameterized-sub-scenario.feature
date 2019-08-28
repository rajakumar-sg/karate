Feature: Test parameterized sub scenario

  Scenario: Test parameterized sub scenario
    * def SubmitCallReport = read('submit-call-report.feature');
    * call SubmitCallReport {pid:'M123', cifs:[{bu:'bu1', cif:'123'}]}
    * match result == {rmPid:'M123', cifs:[{bu:'bu1', cif:'123'}]}