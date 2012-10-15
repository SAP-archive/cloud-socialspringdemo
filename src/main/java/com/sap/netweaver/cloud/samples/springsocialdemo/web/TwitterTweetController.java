/*
 * Copyright 2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.sap.netweaver.cloud.samples.springsocialdemo.web;

import javax.inject.Inject;

import org.springframework.social.connect.Connection;
import org.springframework.social.connect.ConnectionRepository;
import org.springframework.social.twitter.api.Twitter;
import org.springframework.social.twitter.api.impl.TwitterTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TwitterTweetController
{

	@Inject
	private ConnectionRepository connectionRepository;

	@RequestMapping(value = "/twitter/tweet", method = RequestMethod.POST)
	public String postTweet(String message)
	{
		getTwitter().timelineOperations().updateStatus(message);
		return "redirect:/twitter";
	}

	@RequestMapping(value = "/twitter/initTweet", method = RequestMethod.GET)
	public String initTweet()
	{
		return "twitter/initTweet";
	}

	protected Twitter getTwitter()
	{
		Connection<Twitter> twitter = connectionRepository.findPrimaryConnection(Twitter.class);
		return twitter != null ? twitter.getApi() : new TwitterTemplate();
	}

}