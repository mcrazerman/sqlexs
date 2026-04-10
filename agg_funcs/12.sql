*/ Напишите запрос для расчета суммы платежей за каждый месяц и отображения результатов в порядке убывания месяца платежа.
 Запрос должен вернуть только два столбца: payment_month – месяц платежа (в формате «ГГГГ-ММ») и payment_amount – общая сумма платежа за каждый месяц.
*/

SELECT a.payment_month, sum(a.amount) as payment_amount 
    FROM (SELECT DATE_FORMAT(payment_date, '%Y-%m') as payment_month,
        amount   
        FROM payment) as a
        GROUP BY a.payment_month
        order by 1 desc;