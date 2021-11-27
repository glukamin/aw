/*SELECT with WHERE*/

CREATE VIEW AgentView
AS SELECT * 
FROM Agents
WHERE Working_Area=’Bangalore’;