-- Ver reservas com dados do hóspede
SELECT r.id_reserva, h.nome, r.dataEntrada, r.dataSaida
FROM Reserva r
JOIN Hospede h ON r.cpf_hospede = h.cpf_hospede;

-- Ver pagamentos com reserva
SELECT p.id_pagamento, p.valorTotal, r.id_reserva
FROM Pagamento p
JOIN Reserva r ON p.id_reserva = r.id_reserva;

-- Ver reservas com hóspede e pagamento
SELECT r.id_reserva, h.nome, p.valorTotal
FROM Reserva r
JOIN Hospede h ON r.cpf_hospede = h.cpf_hospede
JOIN Pagamento p ON p.id_reserva = r.id_reserva;

-- Reservas ordenadas por data de entrada
SELECT r.id_reserva, h.nome, r.dataEntrada
FROM Reserva r
JOIN Hospede h ON r.cpf_hospede = h.cpf_hospede
ORDER BY r.dataEntrada;

