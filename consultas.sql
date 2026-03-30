-- Ver reservas com dados do hóspede
SELECT r.id_reserva, h.nome, r.dataEntrada, r.dataSaida
FROM Reserva r
JOIN Hospede h ON r.cpf_hospede = h.cpf_hospede;

-- Ver pagamentos com reserva
SELECT p.id_pagamento, p.valorTotal, r.id_reserva
FROM Pagamento p
JOIN Reserva r ON p.id_reserva = r.id_reserva;