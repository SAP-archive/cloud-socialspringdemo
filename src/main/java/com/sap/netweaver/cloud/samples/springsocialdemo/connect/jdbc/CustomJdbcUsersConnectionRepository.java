package com.sap.netweaver.cloud.samples.springsocialdemo.connect.jdbc;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.encrypt.TextEncryptor;
import org.springframework.social.connect.ConnectionFactoryLocator;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.connect.UsersConnectionRepository;
import org.springframework.social.connect.jdbc.JdbcUsersConnectionRepository;

/**
 * Custom implementation of {@link UsersConnectionRepository} based on {@link JdbcUsersConnectionRepository}
 * needed as the used {@link JdbcConnectionRepository is not visible to the outside and hence can not be 
 * replaced on its own right.
 * 
 * Pretty big and obtrusive appraoch, but running out of options.
 * 
 * @see org.springframework.social.connect.jdbc.JdbcConnectionRepository#addConnection(org.springframework.social.connect.Connection)
 * @see CustomJdbcConnectionRepository#addConnection(org.springframework.social.connect.Connection)
 */
public class CustomJdbcUsersConnectionRepository extends JdbcUsersConnectionRepository
{
	private final JdbcTemplate jdbcTemplate;
	
	private final ConnectionFactoryLocator connectionFactoryLocator;

	private final TextEncryptor textEncryptor;
	
	private String tablePrefix = "";

	public CustomJdbcUsersConnectionRepository(DataSource dataSource,
            ConnectionFactoryLocator connectionFactoryLocator, TextEncryptor textEncryptor)
    {
	    super(dataSource, connectionFactoryLocator, textEncryptor);
	    this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.connectionFactoryLocator = connectionFactoryLocator;
		this.textEncryptor = textEncryptor;
    }

	public ConnectionRepository createConnectionRepository(String userId) 
	{
		if (userId == null) {
			throw new IllegalArgumentException("userId cannot be null");
		}
		return new CustomJdbcConnectionRepository(userId, jdbcTemplate, connectionFactoryLocator, textEncryptor, tablePrefix);
	}
	
}
