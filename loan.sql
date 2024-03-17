SELECT * FROM [loan data ]

SELECT	
	(COUNT(CASE WHEN loan_status = 'Charged Off'  ThEN id END)*100.0)
	/
	COUNT(id) AS Good_loan_percentage
	FROM [loan data ]



	SELECT COUNT(id) AS Good_loan_applications FROM  [loan data ]
	WHERE loan_status = 'Charged Off'


	SELECT SUM(loan_amount) AS Good_loan_FUnded FROM  [loan data ]
	WHERE loan_status = 'Charged Off'


	SELECT SUM(total_payment) AS Good_loan_Received FROM  [loan data ]
	WHERE loan_status = 'Charged Off'


	SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
     [loan data ]
    GROUP BY
        loan_status
