CREATE OR REPLACE VIEW young_managers
AS
    SELECT managers.employee AS manager_employee_id
    FROM employees managers
    WHERE most_reports_before_manager (
        CURSOR (    SELECT reports.hire_date
                    FROM employees.reports
                    WHERE reports.manager_id = managers.employee_id ),
        managers.hire_date 
    ) = 1 ;