# EntregaStore Project

## Visão Geral

Este projeto é uma aplicação de e-commerce desenvolvida em Java utilizando o Spring Boot. O objetivo é implementar funcionalidades comuns em plataformas de comércio eletrônico, como autenticação de usuários, gestão de produtos, categorias, pedidos e itens de pedido, entre outros.

## Tecnologias Utilizadas

- **Java 17**
- **Spring Boot 3.4.2**
  - Spring Data JPA
  - Spring Security
  - Spring Web
- **Lombok**
- **MapStruct**
- **Redis**
- **Mensageria** (RabbitMQ ou Kafka)
- **Banco de Dados**: H2 e PostgreSQL
- **Testes**: JUnit e Mockito
- **Build Tool**: Maven

## Arquitetura do Projeto

A arquitetura será baseada no padrão MVC (Model-View-Controller) e algumas práticas de DDD (Domain-Driven Design). A organização do projeto será feita da seguinte maneira:

```
├── src/main/java/com/josemeurer/entregaStore
│   ├── config        
│   ├── controller    
│   ├── dto           
│   ├── entity            
│   ├── mapper        
│   ├── repository    
│   ├── service       
│   └── util          
└── src/test/java/com/example/ecommerce
    ├── controller    
    ├── service       
```
## Funcionalidades Planejadas

### Autenticação e Autorização

- Login de usuários
- Registro de novos usuários
- Permissões baseadas em roles (ADMIN, USER)
- Middleware de autenticação para APIs protegidas

### Gestão de Produtos

- CRUD de produtos
- Paginação e filtros para listagem de produtos
- Validações de estoque antes de adicionar ao carrinho

### Gestão de Categorias

- CRUD de categorias

### Carrinho de Compras

- Adicionar produtos ao carrinho
- Atualizar quantidade de itens
- Remover itens do carrinho

### Pedidos

- Finalizar compra e criar pedidos
- Cancelar pedidos em status inicial
- Visualizar histórico de pedidos do usuário

### Pagamentos

- Processamento de pagamentos (ex.: cartão, pix)
- Atualização do status do pagamento (pago, pendente, falhado)
- Integração com APIs de pagamento

### Mensageria

- Notificações por e-mail ou SMS após criação de pedidos
- Atualizações de status enviadas por fila de mensagens

### Cache com Redis

- Cache para melhorar o desempenho na busca de produtos
- Cache de categorias frequentemente acessadas

## Roteiro de Desenvolvimento

- [ ] **Configuração Inicial**
  - [ ] Criar projeto Spring Boot no [Spring Initializr](https://start.spring.io/)
  - [ ] Configurar dependências no `pom.xml`
  - [ ] Configurar o banco de dados H2
  - [ ] Configurar posteriormente o banco de dados PostgreSQL

- [ ] **Autenticação e Autorização**
  - [ ] Criar entidades User e Role
  - [ ] Implementar autenticação com Spring Security
  - [ ] Implementar endpoints de login e registro

- [ ] **Gestão de Produtos**
  - [ ] Criar entidade Product
  - [ ] Implementar CRUD para produtos
  - [ ] Implementar validações de negócio (estoque, preço)

- [ ] **Gestão de Categorias**
  - [ ] Criar entidade Category
  - [ ] Implementar CRUD para categorias

- [ ] **Carrinho e Pedidos**
  - [ ] Criar entidades Cart, CartItem, Order e OrderItem
  - [ ] Implementar lógica do carrinho de compras
  - [ ] Implementar finalização de pedidos
  - [ ] Adicionar histórico de pedidos

- [ ] **Pagamentos**
  - [ ] Criar entidade Payment
  - [ ] Implementar processamento de pagamentos
  - [ ] Atualizar status do pagamento

- [ ] **Mensageria e Cache**
  - [ ] Configurar Redis para cache
  - [ ] Configurar RabbitMQ ou Kafka para mensageria
  - [ ] Implementar notificações baseadas em eventos

- [ ] **Testes e Documentação**
  - [ ] Implementar testes unitários e de integração
  - [ ] Adicionar documentação das APIs com Swagger

## Configuração do Ambiente

1. Instale o Java 17 e o Maven.
2. Configure o banco em memoria H2 ou PostgreSQL e crie o banco de dados `entregastoredb`.
3. Atualize o arquivo `application.properties` com as credenciais do banco:

**Para PostgreSQL:**
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/entregastoredb
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
```
**Para H2 (Banco de Dados em Memória para Desenvolvimento Local):**
```properties
spring.datasource.url=jdbc:h2:mem:entregastoredb;DB_CLOSE_DELAY=-1
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
spring.h2.console.enabled=true
spring.h2.console.path=/h2-console
```
**Caso use H2, você pode acessar o console em http://localhost:8080/h2-console para verificar o banco de dados em tempo real.**

4. Execute o comando:

```bash
mvn spring-boot:run
```

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).


