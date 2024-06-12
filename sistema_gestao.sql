-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Tempo de geração: 12/06/2024 às 13:18
-- Versão do servidor: 5.7.22
-- Versão do PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_gestao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `email`, `endereco`, `logradouro`, `cep`, `bairro`, `created_at`, `updated_at`) VALUES
(1, 'Márcio Dutra', 'sistemaprojeto2@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-09 16:57:27', '2024-06-09 16:57:27'),
(3, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-09 17:03:57', '2024-06-09 17:03:57'),
(6, 'Ivonete Caxambu', 'ivonete@gmail.com', 'andradas, 245 ap 11', 'Caxias', '90020-000', 'Centro', '2024-06-09 17:54:29', '2024-06-09 17:54:29'),
(12, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:25:12', '2024-06-11 19:25:12'),
(13, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:25:12', '2024-06-11 19:25:12'),
(14, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:27:21', '2024-06-11 19:27:21'),
(15, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:27:21', '2024-06-11 19:27:21'),
(16, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:29:39', '2024-06-11 19:29:39'),
(17, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:29:39', '2024-06-11 19:29:39'),
(18, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:31:19', '2024-06-11 19:31:19'),
(19, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:31:19', '2024-06-11 19:31:19'),
(20, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:50:44', '2024-06-11 19:50:44'),
(21, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:50:45', '2024-06-11 19:50:45'),
(22, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 19:58:10', '2024-06-11 19:58:10'),
(23, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 19:58:10', '2024-06-11 19:58:10'),
(24, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 20:00:57', '2024-06-11 20:00:57'),
(25, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 20:00:57', '2024-06-11 20:00:57'),
(26, 'Márcio Dutra', 'marcio@gmail.com', 'Cel Genuino, 342', 'Porto Alegre', '90010-350', 'Centro', '2024-06-11 20:06:05', '2024-06-11 20:06:05'),
(27, 'Yasmin Dutra', 'yasmin@gmail.com', 'Rua dos maias, 541', 'Porto Alegre', '90050-254', 'Parque dos Mayas', '2024-06-11 20:06:05', '2024-06-11 20:06:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_03_161937_create_produtos_table', 1),
(6, '2024_06_07_182055_create_clientes_table', 2),
(7, '2024_06_09_194231_create_vendas_table', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `valor`, `created_at`, `updated_at`) VALUES
(2, 'Teclado Positivo', 150.00, NULL, '2024-06-06 18:40:15'),
(3, 'Mouse', 20.00, '2024-06-04 19:05:28', '2024-06-04 19:05:28'),
(4, 'Monitor', 499.00, '2024-06-04 20:40:49', '2024-06-04 20:40:49'),
(5, 'Notebook Dell', 2500.00, '2024-06-05 16:22:30', '2024-06-05 16:22:30'),
(6, 'Nobreak', 500.00, '2024-06-05 17:49:11', '2024-06-05 17:49:11'),
(7, 'Impressora', 350.00, '2024-06-05 17:57:33', '2024-06-05 17:57:33'),
(8, 'Mouse sem fio', 200.00, '2024-06-07 17:30:28', '2024-06-07 17:30:28'),
(9, 'Teclado sem fio', 350.00, '2024-06-07 17:46:36', '2024-06-07 17:46:36'),
(10, 'Scanner', 650.00, '2024-06-07 17:50:50', '2024-06-07 17:50:50'),
(11, 'Mouse', 20.00, '2024-06-09 16:57:27', '2024-06-09 16:57:27'),
(12, 'Mouse', 20.00, '2024-06-09 17:03:57', '2024-06-09 17:03:57'),
(13, 'Mouse', 20.00, '2024-06-09 20:34:09', '2024-06-09 20:34:09'),
(15, 'Mouse', 20.00, '2024-06-11 19:25:11', '2024-06-11 19:25:11'),
(16, 'Mouse', 20.00, '2024-06-11 19:27:20', '2024-06-11 19:27:20'),
(17, 'Mouse', 20.00, '2024-06-11 19:29:39', '2024-06-11 19:29:39'),
(18, 'Mouse', 20.00, '2024-06-11 19:31:19', '2024-06-11 19:31:19'),
(19, 'Mouse', 20.00, '2024-06-11 19:50:44', '2024-06-11 19:50:44'),
(20, 'Mouse', 20.00, '2024-06-11 19:58:10', '2024-06-11 19:58:10'),
(21, 'Mouse', 20.00, '2024-06-11 20:00:56', '2024-06-11 20:00:56'),
(22, 'Mouse', 20.00, '2024-06-11 20:06:05', '2024-06-11 20:06:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Marcio', 'marcio@gmail.com', NULL, '$2y$10$gHk08.hWy47Ov.zfqfJSKezMiIb0gT5vksxhH.C/rn27phoEkLw7m', NULL, '2024-06-12 12:38:06', '2024-06-12 12:38:06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_da_venda` int(11) NOT NULL,
  `produto_id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `numero_da_venda`, `produto_id`, `cliente_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2024-06-09 20:36:21', '2024-06-09 20:36:21'),
(2, 1, 2, 1, '2024-06-09 20:36:21', '2024-06-09 20:36:21'),
(3, 2, 2, 6, '2024-06-10 15:25:44', '2024-06-10 15:25:44'),
(4, 1, 2, 1, '2024-06-11 19:25:12', '2024-06-11 19:25:12'),
(5, 1, 2, 1, '2024-06-11 19:25:12', '2024-06-11 19:25:12'),
(6, 1, 2, 1, '2024-06-11 19:27:21', '2024-06-11 19:27:21'),
(7, 1, 2, 1, '2024-06-11 19:27:21', '2024-06-11 19:27:21'),
(8, 1, 2, 1, '2024-06-11 19:29:40', '2024-06-11 19:29:40'),
(9, 1, 2, 1, '2024-06-11 19:29:40', '2024-06-11 19:29:40'),
(10, 1, 2, 1, '2024-06-11 19:31:19', '2024-06-11 19:31:19'),
(11, 1, 2, 1, '2024-06-11 19:31:19', '2024-06-11 19:31:19'),
(12, 1, 2, 1, '2024-06-11 19:50:45', '2024-06-11 19:50:45'),
(13, 1, 2, 1, '2024-06-11 19:50:45', '2024-06-11 19:50:45'),
(14, 1, 2, 1, '2024-06-11 19:58:10', '2024-06-11 19:58:10'),
(15, 1, 2, 1, '2024-06-11 19:58:10', '2024-06-11 19:58:10'),
(16, 1, 2, 1, '2024-06-11 20:00:57', '2024-06-11 20:00:57'),
(17, 1, 2, 1, '2024-06-11 20:00:57', '2024-06-11 20:00:57'),
(18, 1, 2, 1, '2024-06-11 20:06:05', '2024-06-11 20:06:05'),
(19, 1, 2, 1, '2024-06-11 20:06:05', '2024-06-11 20:06:05');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendas_produto_id_foreign` (`produto_id`),
  ADD KEY `vendas_cliente_id_foreign` (`cliente_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `vendas_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
