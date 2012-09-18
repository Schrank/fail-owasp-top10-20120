--
-- Datenbank: `fail`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `selled` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `selled`) VALUES
(1, 'T-Shirt', 12.99, 23),
(2, 'Shirt', 35.99, 42);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `email`) VALUES
(1, 'admin', 'dn4$6MRGfa/tpp9mm,f,m@5*h7?pvQ6z4CpC=70!8Rh$8~c)=i]-]P?#p{iLv/@%j&u&Z+[AN!qn5taNB}InCxgScp+x+7pgZJ_sG{S)20bz-c{x!nKrLR0O77{4G*@,E0r(O0YjLZIH2o5QBh9[YLuyk_*R*5PyG7c!J2.!tGw!U#F?bh31S$%4?}n~Q4i$Dl{[{02_j$!4\\uS]BoL)eDR*p5(6B}W6,BL(ef(o+1\\/)DZpRecWHTQWruvTh]r', 'admin@project.com'),
(2, 'user', 'gm3\\r9WF6pqMdTfsejv2Q=kg_FBTMn@TAFDRh#${igrl1wE6GZz$HJ+H=y*uL5[(dkwkdm?mthy)E3S@v]14vXed!,yA3fe7pB~tO7G9/5Vlzh?V&Qrogvr*uPv?UzV@2F.ieD~]bF.BM}?FChTJD@EXtZN/&cSTHQ2M}Ly!~vpvif2Lmo)P&rgl~T#9VLv+*$J/B83k+]Gf$aQdoEShVYsFlmh7XC4SsfzT[-50/d=5ey8t4tAr]TX+654waz/', 'user@project.com');
